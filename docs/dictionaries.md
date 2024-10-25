---
hide:
  - navigation
  - footer
---


You must download and import the dictionaries you wish to use in order to enable Rikaitan definition lookups.

There are several free dictionaries available for Rikaitan, some of them with glossaries available in different languages.

Be aware that non-English dictionaries generally contain fewer entries than their English counterparts. Even if your primary language is not English, you may consider also importing the English version for better coverage.

### Recommended Dictionaries

!!! note

    If you can't find suitable Rikaitan dictionaries, feel free to Google for dictionaries in your specific language or ask your fellow community members

#### Japanese

Most Rikaitan dictionaries for Japanese are linked in
[Tatsumoto's guide to Japanese](https://tatsumoto.neocities.org/blog/yomichan-and-epwing-dictionaries#rikaitan).

Dictionaries for beginners can be found in the
[JMdict-Rikaitan](https://github.com/Ajatt-Tools/jmdict-rikaitan) repository.

??? note "EPWING Dictionaries"

    Rikaitan supports dictionaries in the esoteric but popular [EPWING](https://ja.wikipedia.org/wiki/EPWING) format. They were often utilized in portable electronic dictionaries. These dictionaries are often sought after by language learners for their correctness and excellent coverage of the Japanese language.

    Unfortunately, as most of the dictionaries released in this format are proprietary, you will need to procure these dictionaries yourself and import them using [Rikaitan Import](https://github.com/Ajatt-Tools/rikaitan-import). Check the project page for additional details.

#### Other Languages

[Kaikki To Rikaitan](https://github.com/Ajatt-Tools/kaikki-to-rikaitan/blob/master/downloads.md) - Wiktionaries in various languages converted to Rikaitan format.

### Bulk Importing Dictionaries

Rikaitan also supports exporting and importing your entire collection of dictionaries.

#### Importing a Dictionary Collection

- Go to Rikaitan's settings page (click on the extension's icon then click on the cog icon from the popup)
- Click `Import Dictionary Collection` and select the database file you want to import
- Wait for the import to finish then turn all the dictionaries back on from the `Dictionaries > Configure installed and enabled dictionaries` section
- Refresh the browser tab to see the dictionaries in effect

#### Exporting the Dictionary Collection

- Click `Export Dictionary Collection` from the backup section of Rikaitan's settings page
- It will show you a progress report as it exports the data then initiates a
  download for a file named something like `rikaitan-dictionaries-YYYY-MM-DD-HH-mm-ss.json`
  (e.g. `rikaitan-dictionaries-2023-07-05-02-42-04.json`)

### Importing and Exporting Personal Configuration

Note that you can also similarly export and import your Rikaitan settings from the `Backup` section of the Settings page.

You should be able to replicate your exact Rikaitan setup across devices by exporting your settings and dictionary collection from the source device then importing those from the destination.
