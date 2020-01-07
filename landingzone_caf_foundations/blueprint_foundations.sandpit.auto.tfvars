# Sample Cloud Adoption Framework landing zone

# Azure Subscription activity logs retention period
azure_activity_logs_retention = 365

# Azure diagnostics logs retention period
azure_diagnostics_logs_retention = 60

# Set of resource groupds to land the blueprint
resource_groups_hub = {
    HUB-CORE-SEC    = {
        name = "-hub-core-sec"
        location = "southeastasia"
    }
    HUB-OPERATIONS  = {
        name = "-hub-operations"
        location = "southeastasia"
    }
}

#specifies the set of location you are going to use in this landing zone
location_map = {
    region1   = "southeastasia"
    region2   = "eastasia"
}

#Set of tags for core operations: includes core resources for hub
tags_hub = {
    environment     = "DEV"
    owner           = "Arnaud"
    deploymentType  = "Terraform"
    costCenter      = "1664"
    BusinessUnit    = "SHARED"
    DR              = "NON-DR-ENABLED"
}

#Logging and monitoring 
analytics_workspace_name = "lalogs"

#Azure Security Center Configuration 
enable_security_center = false
security_center = {
    contact_email   = "email@email.com" 
    contact_phone   = "9293829328"
}

##Log analytics solutions to be deployed 
solution_plan_map = {
    NetworkMonitoring = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/NetworkMonitoring"
    },
    ADAssessment = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/ADAssessment"
    },
    ADReplication = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/ADReplication"
    },
    AgentHealthAssessment = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/AgentHealthAssessment"
    },
    DnsAnalytics = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/DnsAnalytics"
    },
    ContainerInsights = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/ContainerInsights"
    },
    KeyVaultAnalytics = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/KeyVaultAnalytics"
    }
}