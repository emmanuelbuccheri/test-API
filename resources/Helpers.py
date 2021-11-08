import bson
#bson é do Mongo db

#Gera um identificador valido
def get_unique_id():
    return bson.objectid.ObjectId()