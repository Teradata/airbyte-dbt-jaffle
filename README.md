### Transforming External Data Loaded via Airbyte in Teradata Vantage Using dbt
This dbt project is a part of a hands-on demonstration of [Transforming External Data Loaded via Airbyte in Teradata Vantage Using dbt](https://quickstarts.teradata.com/elt/transforming-external-data-loaded-via-airbyte-in-teradata-vantage-using-dbt.html#_install_dbt)

### Prerequisites
1. Access to a Teradata Vantage Instance. If you need a test instance of Vantage, you can provision one for free at [https://clearscape.teradata.com](https://clearscape.teradata.com/sign-in?utm_source=dev_portal&utm_medium=quickstart_tutorial&utm_campaign=quickstarts)
2. Sample data: The sample data [Jaffle Shop Dataset](https://docs.google.com/spreadsheets/d/1-R4F3q8J9KDnFRWpiT3Ysp1RlOoUu3PeQR7xDeLxFts/edit#gid=42273685) can be found in Google Sheets.
3. The sample data should be loaded into Teradata Vantage using Airbyte. Please refer to [Use Airbyte to load data from external sources to Teradata Vantage](https://quickstarts.teradata.com/elt/use-airbyte-to-load-data-from-external-sources-to-teradata-vantage.html) for more details on completing this step. Here we will be using [Jaffle Shop Dataset](https://docs.google.com/spreadsheets/d/1-R4F3q8J9KDnFRWpiT3Ysp1RlOoUu3PeQR7xDeLxFts/edit#gid=42273685) to load the data.

### Loading data from Google Sheets to Vantage instance using Airbyte
Follow the instructions provided in this [quickstart](https://quickstarts.teradata.com/elt/use-airbyte-to-load-data-from-external-sources-to-teradata-vantage.html) to load data from Google Sheet to your Vantage Instance using Airbyte.

**Note: When you configure a Teradata destination in Airbyte, it will ask for a `Default Schema`. For this demonstration we have set the `Default Schema` as `airbyte_jaffle_shop`.**

### Data Transformation with dbt
This dbt project is created using `dbt init` and is named `dbt_airbyte_demo`. You can either reuse this same project and update the `Profiles.yml` file or you can follow below steps. For more details please refer Teradata quickstart guide [Transforming External Data Loaded via Airbyte in Teradata Vantage Using dbt](https://quickstarts.teradata.com/elt/transforming-external-data-loaded-via-airbyte-in-teradata-vantage-using-dbt.html#_install_dbt)
1. Run `dbt init`, name your project and select Teradata as database. 
2. Configure your `dbt_project.yml` file.
3. Configure your database instance details in `Profile.yml` file present in `~/.dbt/` directory. If you don't have `Profile.yml` file, you can create one.
4. Go to the project folder, here in this case `dbt_airbyte_demo` and run `dbt debug` to ensure profile setup is correct.
5. Copy the models and schema.yml.

Once your models are ready, run `dbt run` to execute the transformations defined in the dbt project.

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
