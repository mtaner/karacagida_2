require "YAML"

PRODUCTS = YAML.load_file('app/data/products.yml').first.fetch("products")
