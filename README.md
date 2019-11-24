# gtm-auto-ID-selector

This variable was created for select the correct ID to send the information of hits or pixels. It can compare between debug mode and live mode, production domains or test domains and decide what it's the best ID for this condition.
The result of this Template it's return the identifier to use at any time according to the configuration.

## Author

Roberto Quesada from SIDN and Datalítica (https://sidn.es/)

## Release Notes
	
| Date  | Notes |
|-------|-------|
| 23 November 2019  | First version of the variable released. |

## Before start.
 
To use this template you need enable/use 2 GTM variables:
- Debug Mode
- Page Hostname
The best way to use this template its set all values in variables as the way that we work to normalize all the setup in GTM.

## Variables

- Primary ID: ID of the destination dmp/platform to production enviroment 
- Debug ID: ID of the destination dmp/platform to debug mode enviroment (to not misrepresent data)
- Host List: list of host where the Primary ID is working on.
- Active Debug Mode: check this to discriminate debug mode and live mode.

## Steps to use the template

- Set up the primary ID.
- Set up the debug ID (both of them, they have to be from the same platform to work)
- Add the number of host in production enviroment. Write the host with the subdomain but not with the protocol!
- Enable o disable "Active debug" if you can check if GTM is in preview mode.

## Internal configuration

This configuration it's set when you enabled the variables "Debug Mode" and "Page Hostname", if you want change it 
be aware that with these variables each of the previous sections will be compared.
