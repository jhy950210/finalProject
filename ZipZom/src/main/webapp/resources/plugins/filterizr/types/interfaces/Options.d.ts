import { BaseOptions } from './BaseOptions';
import ActiveFilter from './resources/ActiveFilter';
export interface Options extends BaseOptions {
    filter: ActiveFilter;
}
