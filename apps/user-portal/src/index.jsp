<!--
* Copyright (c) 2019, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
*
* WSO2 Inc. licenses this file to you under the Apache License,
* Version 2.0 (the "License"); you may not use this file except
* in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing,
* software distributed under the License is distributed on an
* "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
* KIND, either express or implied. See the License for the
* specific language governing permissions and limitations
* under the License.
-->

<%= htmlWebpackPlugin.options.importUtil %>
<%= htmlWebpackPlugin.options.importTenantPrefix %>
<%= htmlWebpackPlugin.options.importSuperTenantConstant %>

<!DOCTYPE html>
<html>
    <head>
        <%= htmlWebpackPlugin.options.contentType %>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="referrer" content="no-referrer" />

        <link href="<%= htmlWebpackPlugin.options.publicPath %>/libs/themes/default/theme.min.css" rel="stylesheet" type="text/css"/>

        <title><%= htmlWebpackPlugin.options.title %></title>

        <script src="<%= htmlWebpackPlugin.options.publicPath %>/app-utils.js"></script>
        <script>
            // When OAuth2 response mode is set to "form_post", Authorization code sent in a POST.
            // In such cases, the code is added to the sessionStorage under the key "code".
            const authorizationCode = "<%= htmlWebpackPlugin.options.authorizationCode %>";

            if (authorizationCode !== "null") {
                window.sessionStorage.setItem("code", authorizationCode);
            }

            AppUtils.init({
                serverOrigin: "<%= htmlWebpackPlugin.options.serverUrl %>",
                superTenant: "<%= htmlWebpackPlugin.options.superTenantConstant %>",
                tenantPrefix: "<%= htmlWebpackPlugin.options.tenantPrefix %>"
            });
        </script>
    </head>
    <body>
        <noscript>
            You need to enable JavaScript to run this app.
        </noscript>
        <div id="root"></div>
    </body>
</html>
