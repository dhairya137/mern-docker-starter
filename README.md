# MERN Stack app with Docker

#### Now with one command you can deploy your mern app in prodcution mode

### Preferred OS(Linux, Windows with wsl2 enable)
For this Project we need docker installed in host machine.

#### It has automatic ssl certificate(Because of caddy https) feature so you don't have to worry about ssl

### Technologies Used
1. React -> For Frontend
2. Node/Express -> For Backend
3. Mongo -> For Database
4. Caddy -> For http and https
5. Docker -> For Containerization
6. Make -> For making command execution easier

## Step 1
Clone this repo(Feel free to star it 😉)

## Step 2
Create `local.env` and `production.env` file `server/config` Folder.
local.env
```
MONO_URI=Your mongo atlas connection string
```

production.env
```
MONO_URI=Your mongo atlas connection string
```

## Step 3
Go into `client` folder and add your domain and email address in `Caddyfile.production` file.
```
Your Domain name:443 {
  tls Email address connected to the domain name
  root * /srv
  route {
    reverse_proxy /* api-server:5000
    try_files {path} {path}/ /index.html
    file_server
  }
}
```

## Step 4
Go into `client` folder and add your domain in `Makefile`.
```
build-production:
	docker build \
		-t react-app-production:production \
		--build-arg CADDYFILE=Caddyfile.production \
		--build-arg BASE_URL=https://domainname/ \
		-f Dockerfile.production . 
```

## Step 5
I have split up dev environment and production environment. <br>
For dev environment type `make run-dev` in root folder in terminal. <br>
For production environment type `make run-production` in root folder in terminal. <br>
It will create your react and node images then It will start on port 3000 and port 5000. <br>

### Done you are good to go. <br>
*You can now host in your vps with one command.* 


### Note:- I am suggesting you should you Mongo atlas in Prodcution environment.

### ES Module in Node
We us ECMAScript Modules in the backend in this project. Be sure to have at least Node v14.6+ or you will need to add the "--experimental-modules" flag. <br>

Also, when importing a file (not a package), be sure to add .js at the end or you will get a "module not found" error <br>

You can also install and setup Babel if you would like <br>
<br>

Contact me
Twitter -> [Dhairya Patel](https://twitter.com/dp_137)

*Feel free to star it and share to others.* :)
