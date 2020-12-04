import React, { Component } from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends Component{
    constructor(){
        super();

        this.state = {
            searchTerm: ''
        }

        this.handleChange = this.handleChange.bind(this)
        this.handleSubmit = this.handleSubmit.bind(this)
    }

    componentDidMount(){
        this.props.fetchSearchGiphys("golden retriever")
    }

    handleChange(e){ 
        this.setState({
            searchTerm: e.currentTarget.value
        })
    }

    handleSubmit(e){
        e.preventDefault();
        let searchedVal = this.state.searchTerm.split(" ").join("+")
        this.props.fetchSearchGiphys(searchedVal)
    }

    render(){
        let { giphys } = this.props;

        return(
            <div>
                <form>
                    <input type="text"
                           placeholder="Enter Gif"
                           onChange = {this.handleChange}
                           value = {this.state.searchTerm}
                    />
                    <button type="submit" onClick = {this.handleSubmit}> Submit </button>
                </form>
                <GiphysIndex giphys={giphys}/>
            </div>
        )
    }
    
}

export default GiphysSearch;