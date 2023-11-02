Statistic gRPC server. 
Hosted OS - Debian GNU/Linux 11
Server is built in Linux
Clients:
 - java android game clients
 - flutter admin app
Connection:
 - gRPC with protobuf
 - encrypted
DataBase 
 - Drift (SQLite) stored on hosted server 
Immutable data 
 - freezed
Dependency injection 
 - custom DI container
Isolates
 - db
 - encryption RSA engine
-----------------------------------------------------
Crypto concepts:
 
1. Client sends sensitive initial data encrypted by RSA 
public key with DH part of user key
2. Server decrypt sensitive initial user data using RSA 
private key and send Diffie-Hellman server key
3. Server and client generate session AES key and use it 
for encryption data with IV vector generated in every requests

Clients identifies by token generated after successful 
connection by the server

Integrity check is conducted using MD5 digest.

-------------------------------------------------------
Server architecture concepts

Server uses 4 layer architecture:

1.Transport layer. 
- based on gRPC. 
- handle user requests 
- checks token. 
- interact with domain layer through user-services interface
- 
2.Domain layer.

- contains all services uses to communicate with clients
- services decrypt\encrypt data, 
- handle exceptions, 
- working the database methods 
- working with user pool
- interacts with database through usersDbRepository interface
- interacts with user pool through user pool interface

3.Data layer.

- manage DB connection
- mapping data from/to database format
- implements user db repository interface for DB requests

4.User Pool layer.
- handle and store all active connection 


