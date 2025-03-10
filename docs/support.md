---
hide:
  - navigation
  - footer
  - toc
---

Having trouble with Rikaitan? If you don't find your answers here, feel free to reach out to us in the following communities.

## Rikaitan Matrix or Telegram

We have an active community of users and collaborators on our Matrix space and on Telegram.

[![](https://img.shields.io/badge/chat-join-green?style=for-the-badge&logo=Element&logoColor=green)](https://tatsumoto.neocities.org/blog/join-our-community)

## Github

You can [file an issue on our GitHub repository](https://github.com/Ajatt-Tools/rikaitan/issues/new/choose) and provide any context that could help us assist with your issue.

## Frequently Asked Questions

**I can't scan text in Firefox!**

In Firefox's Manifest V3, host permissions are treated as opt-in. For Rikaitan to work properly, the recommended permissions
must be explicitly set. In the Rikaitan welcome page, go to the `Recommended Permissions (Important)` section and check `Enable recommended permissions`.

**I'm having problems importing dictionaries in Firefox, what do I do?**

Rikaitan uses the cross-browser IndexedDB system for storing imported dictionary data into your user profile. Although
everything "just works" in Chrome, depending on settings, Firefox users can run into problems due to browser bugs.
Rikaitan catches errors and tries to offer suggestions about how to work around Firefox issues, but in general at least
one of the following solutions should work for you:

- Make sure you have cookies enabled. It appears that disabling them also disables IndexedDB for some reason. You
  can still have cookies be disabled on other sites; just make sure to add the Rikaitan extension to the whitelist of
  whatever tool you are using to restrict cookies. You can get the extension "URL" by looking at the address bar when
  you have the search page open.
- Make sure that you have sufficient disk space available on the drive Firefox uses to store your user profile.
  Firefox limits the amount of space that can be used by IndexedDB to a small fraction of the disk space actually
  available on your computer.
- Make sure that you have history set to "Remember history" enabled in your privacy settings. When this option is
  set to "Never remember history", IndexedDB access is once again disabled for an inexplicable reason.
- As a last resort, try using the [Refresh Firefox](https://support.mozilla.org/en-US/kb/reset-preferences-fix-problems)
  feature to reset your user profile. It appears that the Firefox profile system can corrupt itself preventing
  IndexedDB from being accessible to Rikaitan.

**Will you add support for online dictionaries?**

Online dictionaries will not be implemented because it is not possible to support them in a robust way. In order to
perform deinflection, Rikaitan must execute dozens of database queries for every single word. Factoring in
network latency and the fragility of web scraping, it would not be possible to maintain a good and consistent user
experience.

**Is it possible to use Rikaitan with files saved locally on my computer with Chrome?**

In order to use Rikaitan with local files in Chrome, you must first tick the _Allow access to file URLs_ checkbox
for Rikaitan on the extensions page. In addition, you may use the [Rikaitan PDF Viewer](https://rikaitan.github.io/rikaitan-pdf-viewer/web/) to view and scan PDF files that are on your local machine.

**Is it possible to delete individual dictionaries without purging the database?**

Rikaitan is able to delete individual dictionaries, but keep in mind that this process can be _very_ slow and can
cause the browser to become unresponsive. The time it takes to delete a single dictionary can sometimes be roughly
the same as the time it originally took to import, which can be significant for certain large dictionaries.

**Why aren't EPWING dictionaries bundled with Rikaitan?**

The vast majority of EPWING dictionaries are proprietary, so they are unfortunately not able to be included in
this extension due to copyright reasons.
