import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ParroquiasComponent } from './parroquias.component';

describe('ParroquiasComponent', () => {
  let component: ParroquiasComponent;
  let fixture: ComponentFixture<ParroquiasComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ParroquiasComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ParroquiasComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
