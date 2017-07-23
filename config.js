/* globals exports */
'use strict';

exports.id = 'com.add0n.native_client';
exports.version = '0.2.2';

exports.ids = {
  chrome: [
    'hfckgfbhdacemicpjljhfbjmkiggeche', // Send to VLC (Chrome)
    'hgadfjhoalnaidfdoilgeimnolhcodbc', // Send to VLC (Opera)
    'nlbhcidbelfhbpglaaoljbfpfpdkpdcg', // Download with IDM (Chrome)
    'kajaikkhnmegmfnlifeklklaienhdekb', // Download with IDM (Opera)
    'jlodlegnpjplclncjkgolcmdhjmlokna', // Download with FDM (Chrome)
    'iidhcgjgmjodnfbghbgpdnhiajbmgcjo', // Download with FDM (Opera)
    'jfpmbokkdeapjommajdfmmheiiakdlgo', // Download with JDownloader (Chrome)
    'jjbbcngfknmgdlekfofhaagmogeifbpc', // Download with JDownloader (Opera)
    'hlbdmmifbcfpccdnoknhdfcifiglaihb', // Download with DAP (Chrome)
    'ekeecmblpnobdaijmfkcfcnofopooipg', // Download with DAP (Opera)
    'jplcfomghgpjlgglocndioeceojhoika', // Download with Wget (Chrome)
    'cmddfbnhpokddncdalabdlmdckcdmboh', // Download with Wget (Opera)
    'gnfbhaljcgjknnpflfoinlbljfbkeogl', // TEST
  ],
  firefox: [
    '{3e0ac434-26e0-4c03-b757-3078486800c3}', // Send to VLC
    '{d1646fcf-76ad-49c5-b8b2-e496e9b71189}', // Download with IDM
    '{cfd8df21-e05f-46e9-8ea1-af5e5177d492}', // Download with DAP
    '{1fb1ffdc-b95d-451e-be52-7303adf9a0d3}', // Download with FDM
    '{533953f8-ffb6-421c-af1a-5a02a792ab51}', // Download with Wget
  ]
};
