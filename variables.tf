# Copyright [2024] [Bruno Kaiser]

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

# http://www.apache.org/licenses/LICENSE-2.0
# SPDX-License-Identifier: Apache-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

variable "app_id" {
  description = "The app id of the firebase project, 3-5 lowercase chars, followed by 2 digits as a version, separated by a hyphen. e.g. bka."
  type        = string
}

variable "env" {
  description = "The environment of the firebase project, e.g. dev, test, stage, prod"
  type        = string
  default     = "default"
}

variable "platform" {
  description = "The platform of the firebase project, e.g. web, ios, android"
  type        = string
  default     = "web"
}

variable "project_id" {
  description = "The project id of the firebase project, 6-30 characters, lowercase only, with digits and hypens, must start with a letter. Uniquely identifies the project to Google. Use naming convention: app-nn-env-platform, e.g. bka-01-dev-web."
  type        = string
}

variable "app_name" {
  description = "The display name of the firebase app, It is only used within Firebase interfaces and not visible to end-users."
  type        = string
  default     = var.app_id + "-" + var.env + "-" + var.platform
}
