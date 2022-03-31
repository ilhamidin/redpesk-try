###########################################################################
# Copyright 2015 - 2020 IoT.bzh
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#	 http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
###########################################################################

# Add target to project dependency list
PROJECT_TARGET_ADD(serial-modem)
	# Define project Targets
	ADD_LIBRARY(${TARGET_NAME} MODULE 
					modem-bindingv3.c
					HL7692/HL7692-Driver.c
					HL7692/HL7692-Driver.h
					rwgpio/rwgpio.c
					rwgpio/rwgpio.h
					rwserial/rwserial.c
					rwserial/rwserial.h)

	# Binder exposes a unique public entry point
	SET_TARGET_PROPERTIES(${TARGET_NAME} PROPERTIES
	PREFIX "afb-"
		LABELS "BINDING"
	LINK_FLAGS  ${BINDINGS_LINK_FLAG}
		OUTPUT_NAME ${TARGET_NAME}
	)
