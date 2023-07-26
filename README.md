### Welcome to your new dbt project!

This dbt project is created using `dbt init`. This project is named `dbt_airbyte_demo`. You can either reuse this same project and update the `Profiles.yml` file or you can follow below steps.
1. Run `dbt init`, name your project and select Teradata as database. 
2. Configure your `dbt_project.yml` file.
3. Configure your database instance details in `Profile.yml` file present in `~./dbt` directory. If you don't have `Profile.yml` file, you can create one.
4. Go to the project folder, here in this case `dbt_airbyte_demo` and run `dbt debug` to ensure profile setup is correct.
5. Copy the models and schema.yml.

Once your models are ready, run `dbt run` to execute the transformations defined in the dbt project.

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
