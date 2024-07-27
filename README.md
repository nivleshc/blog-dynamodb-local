# Save money by creating Amazon DynamoDB tables locally using Docker!
This repository contains code to deploying Amazon DynamoDB locally.

Amazon DynamoDB local has almost all the capabilities of Amazon DynamoDB, however it can be run locally on your computer without any internet connection, and most importantly, it is completely free to deploy and use.

The code is written using Terraform and contains a docker-compose.yml file.

## Prerequisites
The following are required to implement the solution.

- Docker Compose - if you don’t have this already, then you can install it from https://docs.docker.com/compose/

- Terraform - if you don’t have this already, then you can install it from https://developer.hashicorp.com/terraform/install

- AWS CLI - if you don’t have this already, then install it from https://aws.amazon.com/cli/

## Implementation
### Deploy Amazon DynamoDB locally
1. Clone this repository using 

    ``
      git clone https://github.com/nivleshc/blog-dynamodb-local.git
    `` 
2. Using the command line, browse into the folder that contains the cloned files.
3. Start DynamoDB local using the following command 

    ``
      docker-compose up
    `` 
4. Use the following AWS CLI command To validate that DynamoDB local is available. 

    ``
      aws dynamodb list-tables --endpoint-url http://localhost:8000
    ``

### Use Terraform to create a DynamoDB table and to insert items into it
1. Using the command line, browse into the folder that contains the cloned files.
2. Browse into the folder named **terraform**.
3. To create the TrainLocation DynamoDB table and to insert dummy train location data into it, run the following command: 
``
  terraform apply
`` 

    When prompted, provide your confirmation to continue with the deployment.

Full documentation is available at https://nivleshc.wordpress.com/2024/07/27/save-money-by-creating-amazon-dynamodb-tables-locally-using-docker/
