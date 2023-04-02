# tf-gcp

This repo should be used to manage multiple companies infrastructure in multiple environments.

## Directory structure
<company-a>/ </br>
├── production/ </br>
├── base-gcp/</br>
│   │   ├── versions.tf</br>
│   │   ├── outputs.tf</br>
│   │   ├── data.tf</br>
│   │   ├── variables.tf</br>
│   │   ├── networking.tf</br>
│   │   ├── gke.tf</br>
│   │   └── ....</br>
│   ├── gke/</br>
│   │   ├── versions.tf</br>
│   │   ├── outputs.tf</br>
│   │   ├── data.tf</br>
│   │   ├── variables.tf</br>
│   │   ├── promethus-stack.tf</br>
│   │   ├── nginx.tf</br>
│   │   └── ....</br>
│   ├── base-aws </br>
│   └── eks </br>
├── staging/ </br>
│   ├── base-gcp </br>
│   ├── gke </br>
│   ├── base-aws </br>
│   └── eks </br>
└── development/ </br>
├── base-gcp</br>
├── gke</br>
├── base-aws</br>
└── eks</br>
<company-b>/</br>
├── production/</br>
│   ├── base-gcp</br>
│   ├── gke</br>
│   ├── base-aws</br>
│   └── eks</br>
├── staging/</br>
│   ├── ....</br>
└── development/</br>
├── ....</br>
