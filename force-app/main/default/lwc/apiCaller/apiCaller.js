import { LightningElement } from 'lwc';
import callEndpoint from '@salesforce/apex/ApiCallController.callEndpoint';

export default class ApiCaller extends LightningElement {

  handleClick(event) {

    const peopleList = callEndpoint('https://enr7thjj1rpu72t.m.pipedream.net');

    console.log(peopleList);

  }
}