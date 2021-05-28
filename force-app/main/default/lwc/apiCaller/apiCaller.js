import { LightningElement } from 'lwc';
import callEndpointApex from '@salesforce/apex/ApiCallController.callEndpoint';

const table_columns = [
  { label: 'Name', fieldName: 'Name', type: 'text'}
];

export default class ApiCaller extends LightningElement {

  people;
  error;

  handleClick(event) {

    callEndpointApex({ endPoint: 'https://enr7thjj1rpu72t.m.pipedream.net' })
    .then(result => {
        console.log(result);
        this.people = result;
    })
    .catch(error => {
        console.log(error);
        this.error = error;
    });

  }
}