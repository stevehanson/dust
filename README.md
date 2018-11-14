# Dust

This project is intended to house my personal data in a searchable way.

## Data sources

### Evernote

To import data from Evernote, select all notes in Evernote for Mac, then go to
File->Export and export with tags. Then run
`Evernote::Importer.new("path/to/export.enex")`. This will currently create
duplicates so should be updated to only import new records.

### SMS

TODO. Backup iPhone using iTunes, and then locate the SQLLite DB with the text
messages.

### Other future integrations

I would like to import or live-query from the following sources:

* Day One
* Wunderlist
* Bear
* Google Calendar
* Gmail (only message threads where I also interact)
* Google Photos (API available, 10k req/day, no geotag info comes back)
