test_docker:
		@echo
		@echo "https://localhost:7230/WeatherForecast"
		@echo
		cd ./MyApp
		docker run --rm -p 7230:7230 -p 5148:5148 -e ASPNETCORE_HTTP_PORT=https://+:5148 -e ASPNETCORE_URLS=http://+:7230 dmitry/my-app
terraform-init:
		@echo
		cd ./terraform && terraform init
terraform-validate:
		@echo
		cd ./terraform && terraform init -backend=false && terraform validate
