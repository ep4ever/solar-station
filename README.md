# solar-station

ep4ever solar station software main repository

## Getting started

This repository encapsulate the 3 projects needed to run ep4ever Solar Station Software:

- serial-service
- http-service
- solar-webapp

* Edit the serial-service configuration first (cf. README of the submodule)
* Edit the http-service .env (cf. README)

1) Copy *config.json.dist* to **config.json**
2) Edit the configuration
    **Mandatory: the device(s) setted in serial service sub module**
3) build the solar-webapp project (cf. README)
4) start serial-service
5) start http-service

/!\ Do not edit the **datas** section of the config.json file unless you know what you're doing!