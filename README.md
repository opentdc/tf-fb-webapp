# Terraform module to create a Firebase web app

This is a Terraform module to create a new Firebase web app into an existing project.
It requires the [Google Cloud SDK][] to be installed locally and an
existing [Firebase project][Firebase console]. 

To get started:

1.  Install the [Google Cloud SDK][], [Terraform][Terraform install], and
    [Git][Git install].

2.  Create a [Firebase project][Firebase console] with the Blaze Plan.

3.  Add the following config to your terraform tf file:

    ```
    module "tf-fb-webapp" {
        source            = "github.com/opentdc/tf-fb-webapp"
        project_id        = local.project_id
        app_id            = local.app_id
        env               = local.env
        platform          = local.platform
        app_name          = local.app_name
    }
    ```

4.  Run `terraform init && terraform apply`


## Input variables

| Variable Name               | Type      | Usage       | Default         | Description                                        |
|-----------------------------|-----------|-------------|-----------------|----------------------------------------------------|
| project_id                  | string    | mandatory   |                 | The Firebase project ID                            |
| app_id                      | string    | mandatory   |                 | The app id of the firebase app, e.g. bka           |
|                             |           |             |                 | 3-5 lowercase characters, e.g. bka                 |
| platform                    | string    | optional    | web             | The platform of the Firebase project,              |
|                             |           |             |                 | e.g. web, ios, android                             |
| env                         | string    | optional    | default         | The environment, e.g. dev, test, stage, prod       |
| app_name                    | string    | mandatory   |                 | The display name of the firebase app.              |
|                             |           |             |                 | only used internall                                |


## Output
None