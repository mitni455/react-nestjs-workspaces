import React from "react";

/**
 * @requires styles
 **/
import '../global.css';
import './HomePage.css';

/**
 * @requires Components
 **/
import { CompOne } from '@masterclass-project/components'; 


/**
 * 
 * @interface HomePageProps
 * 
 **/
interface HomePageProps{
    todo?: string; 
}



export default function HomePage(props: HomePageProps): React.ReactElement{
   return (<>
        <main>
            ToDo {props.todo ? props.todo : ''}

            <CompOne />
        </main>
   </>);
}
