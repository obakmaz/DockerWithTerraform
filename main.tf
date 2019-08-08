module "Image" {
    source = "./Image"
    # image variable is declared within the root variables file
    image = "${var.image}"
}

module "Container" {
    source = "./Container"
    # this image will be from the produced image by Image module
    image = "${module.Image.image_out}"
    container_name = "${var.container_name}"
    int_port = "${var.int_port}"
    ext_port = "${var.ext_port}"
}





