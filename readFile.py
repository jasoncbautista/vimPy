

def create_from_template(name):
    template_name = "view.js"
    data = ""
    with open(template_name, "r") as my_template_file:
        data=my_template_file.read().replace("{{myFile}}", name)

    return data.split("\n")

     
