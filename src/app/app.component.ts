import { Component } from '@angular/core';
import { MessagingService } from "./shared/messaging.service";

//import { ArticleService } from './shared/article.service';

// import { Article } from './shared/article.model';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {

  message;

  articles;

  constructor(
    private messagingService: MessagingService,
  ) { }

  ngOnInit() {
    const userId = 'user003';
    this.messagingService.requestPermission(userId)
    this.messagingService.receiveMessage()
    this.message = this.messagingService.currentMessage

    this.getAllArticles();
  }

  getAllArticles() {
    this.articles = [
      { id: 1, name: 'Luke Skywalker', description: 'Lorem ipsum' },
      { id: 2, name: 'Darth Vader', description: 'Lorem ipsum' },
      { id: 3, name: 'Han Solo', description: 'Lorem ipsum' },
    ];
  }
}
