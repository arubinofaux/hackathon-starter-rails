class HomeController < ApplicationController
  layout "user_backend"

  def index
    
  end

  def dev

    #scrapeUsers = URI.encode("http://www.kimonolabs.com/api/2q0ujhre?apikey=42224e48d53427747fe95e0031dd35d9")
    #scrapeUsers = HTTParty.get(scrapeUsers)
    #@scrapeUsers = JSON.parse(scrapeUsers.body)

    #@scrapeUsers['results']['githubUser'].each do |user|

    #	@latitude = "-34.726025"
    #	@longitude = "-58.254356"


    #	puts user['avatar']['alt']
    #	puts "#{SecureRandom.uuid}@example.com"
    #	puts user['avatar']['src']
    #	puts Devise.friendly_token[0,20]
    #	puts user['username']['text']
    #	puts @latitude
    #	puts @longitude

    #	User.create(
    #		name:     user['avatar']['alt'],
    #    email:    "#{SecureRandom.uuid}@example.com",
    #    avatar:   user['avatar']['src'],
    #    password: Devise.friendly_token[0,20],
    #    github_username:  user['username']['text'],
    #    latitude: @latitude,
    #    longitude: @longitude
  	#	)

    #end


    #@users = User.all

    #@users.each do |user|

	  #  scrapeGithub = URI.encode("https://api.github.com/users/#{user.github_username}?client_id=9366916184f0000f1e7a&client_secret=ea4c3b016594a17c9087bd41126464f11f0037b9")
	  #  scrapeGithub = HTTParty.get(scrapeGithub, :headers => {"User-Agent" => "codecademy"})
	  #  @scrapeGithub = JSON.parse(scrapeGithub.body)

	  #  if @scrapeGithub['email']
	  #  	@email = @scrapeGithub['email']
	  #  else
	  #  	@email = "#{SecureRandom.uuid}@example.com"
	  #  end

	  #  puts @scrapeGithub['public_repos']
	  #  puts @scrapeGithub['public_gists']
	  #  puts @scrapeGithub['followers']
	  #  puts @scrapeGithub['following']
	  #  puts @scrapeGithub['company']
	  #  puts @scrapeGithub['bio']
	  #  puts @email

	  #  user.update_attributes(
	  #    :public_repos => @scrapeGithub['public_repos'],
	  #    :public_gists => @scrapeGithub['public_gists'],
	  #    :followers => @scrapeGithub['followers'],
	  #    :following => @scrapeGithub['following'],
	  #    :company => @scrapeGithub['company'],
	  #    :bio => @scrapeGithub['bio'],
	  #    :email => @email
	  #  )

	  #end

    @on_board = User.all

  end
end
