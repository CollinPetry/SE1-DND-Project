from flask import Flask, render_template, request,jsonify
from flask_sqlalchemy import SQLAlchemy
from flask_wtf import FlaskForm 
from wtfforms import SelectField

#idk how this works 
app=Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI']='sqlite:///test.db'
app.config['SECRECT_KEY']='secret'

db=SQLAlchemy(app)

class City(db.Model):
    id=db.Column(db.Integer,primary_key=True)
    state=db.Column(db.String(2))
    name=db.Column(db.String(50))
"""TODO replace with
class Subrace(db.Model):
    subrace_id=db.Column(db.Integer,primary_key=True)
    race_id=db.Column(db.int) #may need to use a join to get raceID from name
    subrace_name=db.Column(db.String(50))
"""
#has state and city select dropdowns
class Form(FlaskForm):
    state=SelectField('state', [('CA', 'California'),('NV', 'Nevada')]) #list of tuples, need to get from db  tuple--> (value of option, text you see)
    city = SelectField('city', choices=[]) #depends on the state selected so left blank
    """TODO replace with
    race=SelectField('race', [('CA', 'California'),('NV', 'Nevada')]) #these should be gotten from the database idk how probably select race_name race_id from races
    subrace = SelectField('subrace', choices=[]) #depends on the state selected so left blank
    
    """

#define a route
@app.route('/', methods= ['GET', 'POST'])
def index():
    form =Form()
    """
    list comprehension
    final result goes all the way to the left
    list of tuples [query]. 
    for city in city.query.filter_by(state='CA').all() loops over cities who belong to state CA and returns them all
    for each city create a tuple city_id  bc want to use id from model and city.name for display name
    """
    form.city.choices= [(city_id, city.name),city,for city in city.query.filter_by(state='CA').all()] #this auto populates as CA

    if request.method='POST':

        city=City.query.filter_by(id=form.city.data).first #has city name gotten from drop down and get first result
        return '<h1>State: {}, City: {}</h1>'.format(form.state.data, city.name) #form.state.data is only representation of state he has
        """TODO Replace with
        #this query is new to me I would have use select subrace_name from Subraces as sr where sr.race_id = race_id 
        subrace=Subrace.query.filter_by(id=form.subrace.data).first #has city name gotten from drop down and get first result
        return '<h1>Race: {}, Subrace: {}</h1>'.format(form.race.data, subrace.subrace_name) #form.state.data is only representation of state he has

        """
    return render_template('index.html', form=form) #pass the form we are working on

    """
    get code to switch cities by using js to request and update the cities and need a new route
    """

    @app.route('/city/<state>')
    #querey db for particular state thats passed in and pass back to whatever is calling it
    def city(state):
        cities=City.querey.filter_by(state=state).all()
        #master list
        cityArray=[]
        #create new city object for each city
        for city in cities:
            cityObj={}
            cityObj['id']=city.id
            city['name']=city.name
            #for each city append onto city array
            cityArray.append(cityObj)

        return jsonify({'cities':cityArray}) 
        #need to call route everytime it changes so we need to use js to know when it changes
        """TODO replace with
            def subrace(race):
        subraces=Subrace.querey.filter_by(race=race).all()
        subraceArray=[]
        for subrace in subraces:
            subraceObj={}
            subraceObj['subrace_id']=subrace.id
            city['subrace_name']=subrace.name
            #for each city append onto city array
            subraceArray.append(subraceObj)

        return jsonify({'subraces':subraceArray}) 

        """


if __name__=='__main__':
    app.run(debug='True')



"""
#in index.html lets us know when selection box changes
<body>
<form method="POST">
    {{ form.csrf_token }}
    {{ form.state }}
    {{ form.city }}
    <input type ="submit">
<form>
<script>
#put listner on to drop downs
    #get object for state select and city select
    let state_select= document.getElementByID('state');
    let city_select=document.getElementByID('city');
    #whenever state drop down changes cities need to change
    state_select.onchange=function(){
        #get value of state to know what state was just selected
        state=state_select.value;

        #need to fetch cities for that state, pass in input, same as the @app.route created in py
        fetch('/city'+state).then(function(response)){
            #convert response object into json object
            response.json().then(function(data)){
              let option.HTML='';
               #loop thru all cities  in the data
                #data.cities is the array from flask
                for(let city of data.cities){
                   #construct new html for dropdown list
                    optionHTML += '<option value = "'+city.id + '">'+ city.name + '</option>' #using<option> variables to inject data in
               }
               #update city select to use new optionHTML, overwrite the old option with data returned by fetch call
               city_select.innerHTML=optionHTML;

            });

        });

    }
</script>
</body>
"""