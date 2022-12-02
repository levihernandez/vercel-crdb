# Vercel Flask App with CockroachDB Serverless

Using the CockroachDB Serverless connection is quick with the following steps:

* Download the CockroachDB Serverless certificate to the App project dir, in this example cert location will be `cert/root.crt` :
  * Go to [Cockroachlabs Console](https://cockroachlabs.cloud/) > Choose your Serverless Cluster > Connect > Download CA Cert > `curl --create-dirs -o cert/root.crt -O https://cockroachlabs.cloud/clusters/{cluster-id}/cert`
  * For CRDB `DATABASE_URL` to work, it will require the following: `pip install psycopg2-binary sqlalchemy-cockroachdb`
* In the Vercel project, declare the variables (note the `&sslrootcert=cert%2Froot.crt` OR `&sslrootcert=cert/root.crt` points to the location of the root cert):
  * `DATABASE_URL=cockroachdb://{user}:{password}@university-cluster-2513.6zw.cockroachlabs.cloud:26257/defaultdb?sslmode=verify-full&sslrootcert=cert/root.crt`
  * `FLASK_DEBUG=production`
  * `FLASK_APP=index.py`

## Test the App

* `git clone https://github.com/levihernandez/vercel-crdb.git`
* Upload to your git repo
* Download CockroachDB Serverless certificate to `cert` dir
* run `vercel --prod`
