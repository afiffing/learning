resource "template_file" "wp-container" {
  template = "${file("task-definitions/hello-world-nginx.json")}"

  vars {
    db_host     = "${var.db_host}"
    db_name     = "${var.db_name}"
    db_user     = "${var.db_user}"
    db_password = "${var.db_password}"
    wp_title    = "${var.wp_title}"
    wp_user     = "${var.wp_user}"
    wp_password = "${var.wp_password}"
    wp_mail     = "${var.wp_mail}"
  }
}
