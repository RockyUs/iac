// Copyright 2023 IAC. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package config

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"os"

	"github.com/mdaxf/iac/com"
	"github.com/mdaxf/iac/integration/activemq"
	"github.com/mdaxf/iac/integration/kafka"
	"github.com/mdaxf/iac/integration/mqttclient"
)

type Controller struct {
	Path      string     `json:"path"`
	Module    string     `json:"module"`
	Timeout   int        `json:"timeout"`
	Endpoints []Endpoint `json:"endpoints"`
}

type PluginController struct {
	Path      string     `json:"path"`
	Endpoints []Endpoint `json:"endpoints"`
}
type Endpoint struct {
	Path    string `json:"path"`
	Method  string `json:"method"`
	Handler string `json:"handler"`
}
type Config struct {
	Port              int                `json:"port"`
	Timeout           int                `json:"timeout"`
	Controllers       []Controller       `json:"controllers"`
	PluginControllers []PluginController `json:"plugins"`
	Portal            Portal             `json:"portal"`
	ApiKey            string             `json:"apikey"`
	OpenAiKey         string             `json:"openaikey"`
	OpenAiModel       string             `json:"openaimodel"`
}

type Portal struct {
	Port  int    `json:"port"`
	Path  string `json:"path"`
	Home  string `json:"home"`
	Logon string `json:"logon"`
}

var apiconfig = "apiconfig.json"
var gconfig = "configuration.json"

var MQTTClients map[string]*mqttclient.MqttClient
var Kakfas map[string]*kafka.KafkaConsumer
var ActiveMQs map[string]*activemq.ActiveMQ

func LoadConfig() (*Config, error) {
	data, err := ioutil.ReadFile(apiconfig)
	if err != nil {
		return nil, fmt.Errorf("failed to read configuration file: %v", err)
	}

	var config Config
	if err := json.Unmarshal(data, &config); err != nil {
		return nil, fmt.Errorf("failed to parse configuration file: %v", err)
	}

	ApiKey = config.ApiKey

	if len(config.OpenAiKey) < 15 {
		OpenAiKey = os.Getenv("OPENAI_KEY")
	} else {
		OpenAiKey = config.OpenAiKey
	}

	if config.OpenAiModel == "" {
		OpenAiModel = os.Getenv("OPENAI_MODEL")
	} else {
		OpenAiModel = config.OpenAiModel
	}

	fmt.Println("loaded portal and api configuration:", config)
	return &config, nil
}

func LoadGlobalConfig() (*GlobalConfig, error) {
	jsonFile, err := ioutil.ReadFile(gconfig)
	if err != nil {
		return nil, fmt.Errorf("failed to read configuration file: %v", err)
	}

	// Create a map to hold the JSON data
	var jsonData GlobalConfig

	// Unmarshal the JSON data into the map
	if err := json.Unmarshal(jsonFile, &jsonData); err != nil {

		return nil, fmt.Errorf("failed to parse configuration file: %v", err)
	}
	//fmt.Println(jsonFile, jsonData)

	com.Instance = jsonData.Instance
	com.InstanceType = jsonData.InstanceType
	com.InstanceName = jsonData.InstanceName
	com.SingalRConfig = jsonData.SingalRConfig
	//fmt.Println(com.SingalRConfig, com.Instance)

	Transaction := jsonData.Transaction

	com.TransactionTimeout = com.ConverttoIntwithDefault(Transaction["timeout"], 15)
	com.DBTransactionTimeout = com.ConverttoIntwithDefault(jsonData.DatabaseConfig["timeout"], 5)

	fmt.Println("loaded global configuration:", jsonData)
	return &jsonData, nil
}
