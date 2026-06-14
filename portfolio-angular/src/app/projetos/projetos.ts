import { Component } from '@angular/core';
import { MatCardModule } from '@angular/material/card';
import {MatSidenavModule } from '@angular/material/sidenav';
@Component({
  selector: 'app-projetos',
  imports: [MatCardModule, MatSidenavModule],
  templateUrl: './projetos.html',
  styleUrl: './projetos.css',
})
export class Projetos {}
