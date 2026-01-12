resource "aws_instance" "lifecycle-instance" {
  ami = var.ami
  instance_type = var.instance_type
  lifecycle {
    # prevent_destroy = true
    # create_before_destroy = true
    ignore_changes = [ tags["lastPatched"] ]

    # replace_triggered_by = [  ]

    # precondition {
      
    # }

    # postcondition {
      
    # }

  }
}

// 1. prevent_destroy: This setting ensures that the instance cannot be destroyed through Terraform commands, adding a layer of protection against accidental deletions.
// 2. create_before_destroy: This setting ensures that when the instance needs to be replaced (for example, due to changes in immutable attributes), a new instance is created before the old one is destroyed, minimizing downtime.
// 3. ignore_changes: This setting tells Terraform to ignore changes to the specified attribute (in this case, the "lastPatched" tag). This is useful for attributes that may change frequently but should not trigger a resource replacement.
// 4. replace_triggered_by: This setting allows you to specify other resources or attributes that, when changed, should trigger the replacement of this instance. In this example, it's left empty, but you could add references to other resources
// 5. precondition and postcondition: These blocks allow you to define conditions that must be met before and after the resource is created or updated. In this example, they are left empty, but you could add specific conditions as needed.