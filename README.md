# openapi-skeleton

OpenAPI skeleton

# Directory

```
├── README.md
├── dist
├── openapi
│   ├── api
│   │   └── openapi.yaml
│   └── auths
│       └── openapi.yaml
├── package.json
├── scripts
│   ├── openapi2generator-ruby.sh
│   ├── root2openapi.sh
│   └── swagger-ui.sh
└── src
    ├── components
    │   └── Common_Image.yaml
    └── services
        ├── api
        │   ├── components
        │   ├── examples
        │   │   ├── animals-cats-example-1.yaml
        │   │   ├── animals-dogs-example-1.yaml
        │   │   └── fruits-apples-example-1.yaml
        │   ├── paths
        │   │   ├── animals
        │   │   │   ├── cats.yaml
        │   │   │   └── dogs.yaml
        │   │   └── fruits
        │   │       └── apples.yaml
        │   └── root.yaml
        └── auths
            ├── components
            ├── examples
            │   └── auth-token-example-1.yaml
            ├── paths
            │   └── auth
            │       └── token.yaml
            └── root.yaml
```

# Usage

1. Generate openapi.yaml from root.yaml

```
./scripts/root2openapi.sh api
./scripts/root2openapi.sh auths
```

2. Run swagger-ui

```
./scripts/swagger-ui.sh api
./scripts/swagger-ui.sh auths

// Open localhost:80
```

3. Generate ruby serializer from root.yaml by openapi2generator

```
./scripts/openapi2generator-ruby.sh api
./scripts/openapi2generator-ruby.sh auths
```

4. (Watch yaml modifications and generate automatically )

```
npm run watch-api
npm run watch-auths
```

