require "YAML"

PRODUCTS = YAML.load_file('lib/products.yml').first.fetch("products")
