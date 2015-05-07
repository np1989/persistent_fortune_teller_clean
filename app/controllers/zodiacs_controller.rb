class ZodiacsController < ApplicationController


def newform



end

def create_row

  z = Zodiac.new
  z.sign =params["sign"].downcase
  z.creature = params["creature"].downcase
  z.fortune = params["horoscope"].downcase
  z.save

  @sign = params["sign"]
  @creature = params["creature"]
  @horoscope = params["horoscope"]
  redirect_to('http://localhost:3000/zodiacs')

end

def sign

  @sign = params["the_sign"]
  z = Zodiac.find_by({:sign => @sign })

  @searched_sign = z.sign
  @searched_creature = z.creature
  @searched_fortune = z.fortune

end

def creature


  @sign = params["the_creature"]
  z = Zodiac.find_by({:creature => @sign })

  @searched_sign = z.sign
  @searched_creature = z.creature
  @searched_fortune = z.fortune

end

def index

@list_of_zodiacs = Zodiac.all

end

def destroy

  @id = params[:id]
  z = Zodiac.find_by({:id => @id})
  z.destroy

    redirect_to('http://localhost:3000/zodiacs')



end

end

