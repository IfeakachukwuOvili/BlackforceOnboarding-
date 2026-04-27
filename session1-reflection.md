1. What is multi-tenancy and why does it mean Apex has governor limits?
Multi-tenancy means many customers share the same Salesforce servers.
Because of this, Salesforce puts limits (governor limits) so one user’s code doesn’t use too many resources and affect others.

2. Difference between declarative and programmatic customisation (with examples):
Declarative means using clicks, not code.
Programmatic means writing code.
Example (declarative): I created a custom object and fields using Object Manager.
Example (programmatic): I wrote an Apex class to get and display products on a page.

3. Why do we use Git and source control instead of changing directly in the org?
We use Git to track changes and avoid mistakes.
It lets multiple people work safely and keeps a backup of the code.
Making changes directly in the org is risky and hard to manage.