#!/usr/bin/env bash
# Copyright 2022 WSO2 LLC. (http://wso2.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

eval $(minikube docker-env)
( cd client_stubs ; bal pack ; bal push --repository local)
( cd money ; bal pack ; bal push --repository local)
( cd cartservice ; bal build --cloud=k8s)
( cd currencyservice ; bal build --cloud=k8s)
( cd emailservice ; bal build --cloud=k8s)
( cd paymentservice ; bal build --cloud=k8s)
( cd productcatalogservice ; bal build --cloud=k8s)
( cd recommendationservice ; bal build --cloud=k8s)
( cd shippingservice ; bal build --cloud=k8s)
( cd adservice ; bal build --cloud=k8s)
( cd checkoutservice ; bal build --cloud=k8s)
( cd frontend ; bal build --cloud=k8s)
