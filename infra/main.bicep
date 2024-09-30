param appName string = 'hello-world-static-web-app'
param location string = resourceGroup().location
param repositoryUrl string = 'https://github.com/rukasakurai/hello-world-aswa'
param branch string = 'main'
param sku string = 'Free'

module staticWebApp 'br/public:avm/res/web/static-site:0.3.0' = {
  name: 'staticWebAppModule'
  params: {
    name: appName
    location: location
    repositoryUrl: repositoryUrl
    branch: branch
    sku: sku
  }
}

output staticWebAppUrl string = staticWebApp.outputs.defaultHostname
