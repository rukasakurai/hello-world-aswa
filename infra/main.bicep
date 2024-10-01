param staticWebAppName string = 'hello-world-static-web-app'
param location string = resourceGroup().location
param repositoryUrl string = 'https://github.com/rukasakurai/hello-world-aswa'
param branch string = 'main'
param sku string = 'Free'

module staticWebApp 'br/public:avm/res/web/static-site:0.6.0' = {
  name: 'staticWebAppModule'
  params: {
    name: staticWebAppName
    location: location
    repositoryUrl: repositoryUrl
    branch: branch
    sku: sku
  }
}
// Reference: https://github.com/Azure/bicep-registry-modules/tree/main/avm/res/web/static-site
// Have not figured out how to identify the latest version of the module other than going through https://github.com/Azure/bicep-registry-modules/tags

output staticWebAppUrl string = staticWebApp.outputs.defaultHostname
