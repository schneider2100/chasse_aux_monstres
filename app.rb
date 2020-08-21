require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'dorfus'

larve = Dorfus.new("Larves","monstre_larve")
larve.perform

caverne = Dorfus.new("Monstres des cavernes","monstre_caverne")
caverne.perform

pleine_herbeuse = Dorfus.new("Monstres des Plaines herbeuses","monstre_plaine_herbeuse")
pleine_herbeuse.perform

