import { LightningElement, wire} from 'lwc';
import getAccounts from '@salesforce/apex/AccountListController.getAccounts';

const table_columns = [
    { label: 'Name', fieldName: 'Name', type: 'text'}
];

export default class AccountList extends LightningElement {

    columns = table_columns;

    @wire(getAccounts) accounts;
}