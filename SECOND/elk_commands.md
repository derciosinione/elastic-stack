# Create an index

## Syntax:
  PUT Name-of-the-Index

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
GET Name-of-the-Index/_doc/id

# Update doc

POST users/_update/1 
{
  "doc": {
    "name": "Dércio Sinione"
  }
}

# Delete a document
Syntax:
  DELETE Name-of-the-Index/_doc/id
