contacts = [
  ['Furman Wood', '404 803 8412', 'fwood@cpprofessionals.com'],
  ['Daniel Levison', '404 358 3547', 'dlevison@cpprofessionals.com'],
  ['Keith Guthrie', '404 790 7271', 'kguthrie@CPProfessionals.com'],
  ['William Wood', '404 867 9110', 'wwood@cpprofessionals.com'],
  ['Jason Whitworth', '404 723 9199', 'jwhitworth@CPProfessionals.com'],
  ['Steve Hanna', '404 421 0151', 'sthanna@cpprofessionals.com'],
  ['Alex Cobble', '404 307 4837', 'acobble@cpprofessionals.com'],
  ['Rachel Condon', '404 275 5794', 'rcondon@cpprofessionals.com'],
  ['Stewart Wallace', '404 641 0424', 'swallace@cpprofessionals.com'],
  ['Nick Carlson', '770 656 4612', 'ncarlson@cpprofessionals.com']
]

contacts.each do |contact|
  Contact.create(name: contact[0], cell: contact[1], email: contact[2])
end
