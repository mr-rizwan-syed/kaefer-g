# **sni_lookup.sh**
 _This script allows you to download and search Server Name Indication (SNI) IP ranges from various providers._
 The script allows users to update and download the latest SNI IP ranges, creating individual files for each provider. It also enables searching for a specific domain within these ranges. This tool is valuable for Bug Bounty Hunters, Pentesters, Red Teamers, and Blue Teamers, aiding in attack surface discovery, domain enumeration, asset inventory maintenance, monitoring, incident response, shadow IT identification, and phishing detection. Overall, it enhances security professionals' capabilities in identifying and addressing potential security risks.
 
**CONTRIBUTERS**

- `mr-rizwan-syed`
- `rushikeshhh-patil`
- `vishnu-menon`

**Special thanks to _kaeferjaeger.gay_ for providing the SNI IP ranges data.**

**USAGE**

**Download SNI IP Ranges**

To download the latest SNI IP ranges from providers such as ***Amazon, DigitalOcean, Google, Microsoft, and Oracle***, run the following command:

```./sni_lookup.sh -update```

This will create or update the `sni-ranges` folder with individual files for each provider.

**Search Domain in SNI IP Ranges**

To search for a specific domain within the downloaded SNI IP ranges, use the following command:

```./sni_lookup.sh <domain>```

Replace `<domain>` with the domain you want to search for. The script will display matches for the specified domain within each provider's IP range file.

**Example**

```./sni_lookup.sh tesla.com```

# **_Feel free to contribute, report issues, or suggest improvements._** 
