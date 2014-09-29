def create_from_template(template_name, name):
    data = ""
    with open(template_name, "r") as my_template_file:
        data=my_template_file.read().replace("{{myFile}}", name)

    return data



print create_from_template("view.js", "nameMain")
     
