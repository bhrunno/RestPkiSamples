﻿using Lacuna.RestPki.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Web;

namespace Signer {

	public class Util {

		public static RestPkiClient GetRestPkiClient() {

			// ================================================================
			//           >>>> PASTE YOUR API ACCESS TOKEN BELOW <<<<
			// ================================================================
			var accessToken = "YOUR API ACCESS TOKEN HERE";
			//                 ^^^^^^^^^^^^^^^^^^^^^^^^^^

			// Please keep the API access token hardcoded on your code (instead of, for instance, placing it on the App.config file)
			// in order to make it more difficult for ill-intended users to acquire your token. Ideally, you should employ an obfuscation
			// technique to hide it even further (contact us if you need help with that).

			// The check below is performed to help programmers unaware of the need for an API access
			// token. You are encouraged to remove it once you've pasted your access token above.
			if (string.IsNullOrEmpty(accessToken) || accessToken.Contains(" API ")) {
				throw new Exception("The API access token was not set! Hint: to run this sample you must generate an API access token on the REST PKI website and paste it on the Util.cs file");
			}

			// In order to use this sample on a "on premises" installation of Rest PKI, change
			// the address below to address of your Rest PKI installation (with the trailing '/' character).
			//
			// If you are using the official Rest PKI on https://pki.rest/, please leave this "as is".
			var endpoint = "https://pki.rest/";

			return new RestPkiClient(endpoint, accessToken);
		}

	}
}
