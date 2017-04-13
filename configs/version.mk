# Copyright (C) 2016 The Pure Nexus Project
# Copyright (C) 2016 Flash ROM
# Copyright (C) 2017 VanillaNexus
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
VANILLA_BUILDNAME :=Bean
VANILLA_BUILDNUMBER :=2.0
ifeq ($(PUBLIC),true)
 VANILLA_BUILDTAG :=Public
else ifeq ($(PUBLIC),skye)
 VANILLA_BUILDTAG :=Skye
else
 VANILLA_BUILDTAG :=Git-Built
endif

ROM_NAME :=Vanilla

ifeq ($(PUBLIC),skye)
 ROM_VERSION :=$(VANILLA_BUILDNAME)-$(VANILLA_BUILDNUMBER)-$(VANILLA_BUILDTAG)-Pixel
else ifeq ($(PIXEL),true)
 ROM_VERSION :=$(VANILLA_BUILDNAME)-$(VANILLA_BUILDNUMBER)-$(VANILLA_BUILDTAG)-Pixel
else
 ROM_VERSION :=$(VANILLA_BUILDNAME)-$(VANILLA_BUILDNUMBER)-$(VANILLA_BUILDTAG)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.rom.version=$(ROM_VERSION)

