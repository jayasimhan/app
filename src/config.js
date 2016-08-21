/*For production pass in the config in npm start like this:

PGHOST=mypgdatabase.blah.us-west-2.rds.amazonaws.com PGUSER=blah PGPASSWORD=blah PGDATABASE=blah NODE_ENV=production npm start
*/
module.exports = {
    "development":{
        db: {
                host:"localhost",
                port:5432,
                user:"myappuser",
                password:"mypassword",
                database:"myappdb"
            }
    },
    "production":{
        db: {
                port:5432
            }
    }
    
}