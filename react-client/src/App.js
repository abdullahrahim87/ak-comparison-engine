import React, { Component } from 'react';
import logo from './logo.svg';
import { Container, Header, Segment, Button, Icon, Dimmer, Loader, Divider } from 'semantic-ui-react'
import './App.css';

class App extends Component {

    constructor(){
        super()
        this.state = {}

    }

    componentDidMount () {
        this.getEntities()
    }

    fetch (endpoint) {
        return new Promise((resolve, reject) => {
            window.fetch(endpoint)
                .then(response => response.json())
                .then(json => resolve(json))
                .catch(error => reject(error))
        })
    }


    getEntities () {


        this.fetch('api/entities')
            .then(entities => {
                this.setState({entities: entities})
            })


    }



    render() {
        let {entities} = this.state
        return entities
            ? <Container text>
                <Header as='h2' icon textAlign='center'>
                    <Icon name='cocktail' circular />
                    <Header.Content>
                        What you want to compare?
                    </Header.Content>
                </Header>
                <Button.Group fluid widths={entities.length}>
                    {Object.keys(entities).map((key) => {
                        return <Button fluid key={key}>
                            {entities[key].title}
                        </Button>
                    })}
                </Button.Group>
                <Divider hidden />
            </Container>
            : <Container text>
                <Dimmer active inverted>
                    <Loader content='Loading' />
                </Dimmer>
            </Container>
    }
}

export default App;
