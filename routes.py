"""
Routes and views for the bottle application.
"""

from bottle import route, view


@route('/')
@route('/home')
@view('index')
def home():
    """Renders the home page."""
    return dict(

    )

@route('/Ewoks')
@view('Ewoks')
def contact():
    """Renders the contact page."""
    return dict(
        title='Contact',
        message='Your contact page.',

    )

@route('/Porgs')
@view('Porgs')
def about():
    """Renders the about page."""
    return dict(
        title='About',
        message='Порги-это красивый пингвин',

    )
@route('/Wookiee')
@view('Wookiee')
def about():
    """Renders the about page."""
    return dict(
        title='About',
        message='Your application description page.',

    )
