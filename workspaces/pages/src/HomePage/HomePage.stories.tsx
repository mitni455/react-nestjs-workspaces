
import React from 'react';

import { storiesOf } from '@storybook/react';
import { withKnobs, text as txtAddOn, boolean, number, object as objectAddOn, array as arrayAddOn, select, radios, optionsKnob, files, date, button as buttonAddOn } from '@storybook/addon-knobs';

/**
 * @components
 */
import HomePage from './HomePage';

/**
 * Story Category
 * @param {String} categoryName - the tab name 
 * @param {NodeModule} module - no idea what this does? 
 */
const stories = storiesOf('Pages/HomePage', module);

/** 
 * Stories 
 * @name add 
 * @param {string} storyName - story name which is the name of the tab 
 * @param {Function:JSX.Element} fn - returns the react element 
 */
stories
    .addDecorator(withKnobs) // <--- add knobs 
    .add('HomePage', ()=>{
        
        /**
         * @models
         */
        

        /**
         * @knobs 
         */
        
        
        
        /**
         * @component 
         */
        
        
        return (
            <HomePage  />
        );
    });
