heroku pipelines:destroy dh-dx-pipeline-demo
heroku apps:destroy -a dreamhouse-dev-dx-demo -c dreamhouse-dev-dx-demo
heroku apps:destroy -a dreamhouse-staging-dx-demo -c dreamhouse-staging-dx-demo
heroku apps:destroy -a dreamhouse-prod-dx-demo -c dreamhouse-prod-dx-demo
rm -- "destroy-dx-demo.sh"
