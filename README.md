# **KGAY.SH**
 _This script allows you to download and search Server Name Indication (SNI) IP ranges from various providers._


**CONTRIBUTERS**

- `mr-rizwan-syed`
- `rushikeshhh-patil`
- `vishnu-menon`

**Special thanks to _kaeferjaeger.gay_ for providing the SNI IP ranges data.**

**USAGE**

**_This script can be used to discover the IPs that belongs to the target organizations and also to identify cloud assets of the target organizations._**

Before understanding how to use this script, we will first understand what are SNI / CN related to an organization and why are they important for a network pentester.

<strong>What is SNI?<br>

SNI, which stands for Server Name Indication, is a protocol extension that empowers clients to indicate the desired hostname in the early phases of the TLS handshake.

Why is it significant?

SNI holds paramount importance for network penetration testers as it permits them to pinpoint specific virtual hosts on shared servers. This precision is invaluable for conducting more efficient and focused security assessments, particularly in multi-host environments during penetration testing. The ability to identify the destination prior to the establishment of encryption is a crucial aspect of conducting thorough and targeted evaluations.</strong>

<strong>What is CN?

CN, or Common Name, is a field within X.509 digital certificates used in TLS/SSL protocols to identify the entity associated with the certificate. It typically represents the domain or entity to which the certificate is issued.

Why is it important?

The CN plays a crucial role in ensuring the authenticity of a website or service during secure communication. It allows clients to verify that they are connecting to the intended server, helping prevent man-in-the-middle attacks. Properly validating the CN is essential for establishing trust in online transactions, secure data exchange, and maintaining the overall security of internet communication.</strong>

**Download SNI IP Ranges**

To download the latest SNI IP ranges from providers such as ***Amazon, DigitalOcean, Google, Microsoft, and Oracle***, run the following command:

```./sni_lookup.sh -update```

This will create or update the `sni-ranges` folder with individual files for each provider.

**Search Domain in SNI IP Ranges**

To search for a specific domain within the downloaded SNI IP ranges, use the following command:

```./sni_lookup.sh <domain>```

Replace `<domain>` with the domain you want to search for. The script will display matches for the specified domain within each provider's IP range file.

**Example**

```./sni_lookup.sh example.com```


# **_Feel free to contribute, report issues, or suggest improvements._** 
