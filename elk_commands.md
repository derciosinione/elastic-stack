# Create an index

## Syntax:
  PUT name-of-the-index

PUT users
PUT microservices
PUT modules
PUT actions
PUT types
PUT prod_logs
PUT staging_logs
PUT dev_logs

#  Indexing a document

PUT users/_create/1
{
  "cpf" : "006153280LA047",
  "name": "Dercio Sinione",
  "email": "dercio.sinione@drcash.com.br"
}

PUT users/_create/2
{
  "cpf" : "0879098",
  "name": "Henrique Pereira",
  "email": "henrique.pereira@drcash.com.br"
}

PUT users/_create/3
{
  "cpf" : "576890",
  "name": "Ruan",
  "email": "ruan@drcash.com.br"
}

PUT users/_create/4
{
  "cpf" : "0879098",
  "name": "Osvaldo Mateus",
  "email": "osvaldo.mateus@drcash.com.br"
}


PUT users/_create/5
{
  "cpf" : "0872434",
  "name": "Osvaldo Mateus",
  "email": "osvaldo.mateus@drcash.com.br"
}

# Read a document
Syntax:
GET name-of-the-index/_doc/id

# Read all documents
GET name-of-the-index/_search

# filter document
GET users/_search 
{
  "query": {
    "match": {
      "name": "dercio sinione"
    }
  }
}
# Update doc

POST users/_update/1 
{
  "doc": {
    "name": "Dércio Sinione"
  }
}

# Delete a document
Syntax:
  DELETE name-of-the-index/_doc/id

DELETE users/_doc/5

# Microservice

PUT microservices/_create/4
{
  "name": "API Gateway",
  "created_date": "2021-09-21",
  "updated_date": "",
  "created_by": "dercio sinione",
  "updated_by": ""
}

# Insert Dev_logs document
PUT dev_logs/_create/5
{
  "microservice": {
    "name": "Clinic",
    "module": "user"
  },
  "action": "Create",
  "type": "Information",
  "description": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
  "created_date": "2021-09-21",
  "updated_date": "",
  "user": {
    "cpf": "567890",
    "name": "dercio sinione",
    "email": "dercio.sinione@drcash.com.br"
  }
}

PUT dev_logs/_create/6
{
  "microservice": {
    "name": "Clinic",
    "module": "user"
  },
  "action": "Update",
  "type": "Information",
  "data_sent": "object",
  "old_data": "object",
  "description": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
  "created_date": "2021-09-21",
  "updated_date": "",
  "user": {
    "cpf": "567890",
    "name": "dercio sinione",
    "email": "dercio.sinione@drcash.com.br"
  }
}