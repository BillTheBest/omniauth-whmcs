# OmniAuth WHMCS

This is the  OmniAuth strategy for authenticating to WHMCS. To
use it, you'll need to sign up for an OAuth2 Application ID and Secret
on the [WHMCS Single Signon Page](http://docs.whmcs.com/WHMCS_Single_Sign-On).

## Basic Usage

    use OmniAuth::Builder do
      provider :whmcs, ENV['WHMCS_KEY'], ENV['WHMCS_SECRET']
    end

## VirtEngine Enterprise Usage

    provider :whmcs, ENV['WHMCS_KEY'], ENV['WHMCS_SECRET'],
        {
          :client_options => {
            :site => 'https://billing.virtengine.com',
            :authorize_url => 'https://billing.virtengine.com/whmcs/oauth/authorize.php',
            :token_url => 'https://billing.virtengine.com/whmcs/oauth/access_token.php',
          }
        }

## Scopes

WHMCS lets you set scopes to provide granular access to different types of data:

	use OmniAuth::Builder do
      provider :whmcs, ENV['WHMCS_KEY'], ENV['WHMCS_SECRET'], scope: "clientarea:profile, clientarea:billing_info"
    end

More info on [Scopes](http://docs.whmcs.com/WHMCS_Single_Sign-On_Developer_Guide).

## License

Copyright (c) 2016 DET.io, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
