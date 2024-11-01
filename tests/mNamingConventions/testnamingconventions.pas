unit testnamingconventions;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit
  being tested.

}

interface

uses
  {$IFDEF FPC}fpcunit, testutils, testregistry,
  {$ELSE}TestFramework,{$ENDIF}
  Classes, mNamingConventions;

type

  { TTestmNamingConventions }

  TTestmNamingConventions = class(TTestCase)
  strict private
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestSimple;
    procedure TestComplex;
  end;


implementation

uses
  SysUtils;


{ TestMapReduce }

procedure TTestmNamingConventions.SetUp;
begin
  inherited;

end;

procedure TTestmNamingConventions.TearDown;
begin
  inherited;

end;


procedure TTestmNamingConventions.TestSimple;
begin
  CheckEquals(ConvertNamingConvention('THIS_IS_A_TEST', ncUpperSnakeCase, ncUpperSnakeCase), 'THIS_IS_A_TEST', 'upper snake to upper snake');
  CheckEquals(ConvertNamingConvention('THIS_IS_A_TEST', ncUpperSnakeCase, ncSnakeCase), 'this_is_a_test', 'upper snake to snake');
  CheckEquals(ConvertNamingConvention('THIS_IS_A_TEST', ncUpperSnakeCase, ncCamelCase), 'thisIsATest', 'upper snake to camel');
  CheckEquals(ConvertNamingConvention('THIS_IS_A_TEST', ncUpperSnakeCase, ncPascalCase), 'ThisIsATest', 'upper snake to pascal');
  CheckEquals(ConvertNamingConvention('THIS_IS_A_TEST', ncUpperSnakeCase, ncKebabCase), 'this-is-a-test', 'upper snake to kebab');

  CheckEquals(ConvertNamingConvention('this_is_a_test', ncSnakeCase, ncSnakeCase), 'this_is_a_test', 'snake to snake');
  CheckEquals(ConvertNamingConvention('this_is_a_test', ncSnakeCase, ncUpperSnakeCase), 'THIS_IS_A_TEST', 'snake to upper snake');
  CheckEquals(ConvertNamingConvention('this_is_a_test', ncSnakeCase, ncCamelCase), 'thisIsATest', 'snake to camel');
  CheckEquals(ConvertNamingConvention('this_is_a_test', ncSnakeCase, ncPascalCase), 'ThisIsATest', 'snake to pascal');
  CheckEquals(ConvertNamingConvention('this_is_a_test', ncSnakeCase, ncKebabCase), 'this-is-a-test', 'snake to kebab');

  CheckEquals(ConvertNamingConvention('this-is-a-test', ncKebabCase, ncSnakeCase), 'this_is_a_test', 'kebab to snake');
  CheckEquals(ConvertNamingConvention('this-is-a-test', ncKebabCase, ncUpperSnakeCase), 'THIS_IS_A_TEST', 'kebab to upper snake');
  CheckEquals(ConvertNamingConvention('this-is-a-test', ncKebabCase, ncCamelCase), 'thisIsATest', 'kebab to camel');
  CheckEquals(ConvertNamingConvention('this-is-a-test', ncKebabCase, ncPascalCase), 'ThisIsATest', 'kebab to pascal');
  CheckEquals(ConvertNamingConvention('this-is-a-test', ncKebabCase, ncKebabCase), 'this-is-a-test', 'kebab to kebab');

  CheckEquals(ConvertNamingConvention('thisIsATest', ncCamelCase, ncCamelCase), 'thisIsATest', 'camel to camel');
  CheckEquals(ConvertNamingConvention('thisIsATest', ncCamelCase, ncPascalCase), 'ThisIsATest', 'camel to pascal');
  CheckEquals(ConvertNamingConvention('thisIsATest', ncCamelCase, ncSnakeCase), 'this_is_a_test', 'camel to snake');
  CheckEquals(ConvertNamingConvention('thisIsATest', ncCamelCase, ncUpperSnakeCase), 'THIS_IS_A_TEST', 'camel to upper snake');
  CheckEquals(ConvertNamingConvention('thisIsATest', ncCamelCase, ncKebabCase), 'this-is-a-test', 'camel to kebab');

  CheckEquals(ConvertNamingConvention('ThisIsATest', ncPascalCase, ncPascalCase), 'ThisIsATest', 'pascal to pascal');
  CheckEquals(ConvertNamingConvention('ThisIsATest', ncPascalCase, ncCamelCase), 'thisIsATest', 'pascal to camel');
  CheckEquals(ConvertNamingConvention('ThisIsATest', ncPascalCase, ncSnakeCase), 'this_is_a_test', 'pascal to snake');
  CheckEquals(ConvertNamingConvention('ThisIsATest', ncPascalCase, ncUpperSnakeCase), 'THIS_IS_A_TEST', 'pascal to upper snake');
  CheckEquals(ConvertNamingConvention('ThisIsATest', ncPascalCase, ncKebabCase), 'this-is-a-test', 'pascal to kebab');
end;

procedure TTestmNamingConventions.TestComplex;
begin
  CheckEquals(ConvertNamingConvention('_THIS_IS_A_TEST', ncUpperSnakeCase, ncUpperSnakeCase), '_THIS_IS_A_TEST');
  CheckEquals(ConvertNamingConvention('_THIS_IS_A_TEST', ncUpperSnakeCase, ncSnakeCase), '_this_is_a_test');
  CheckEquals(ConvertNamingConvention('_THIS_IS_A_TEST', ncUpperSnakeCase, ncCamelCase), '_thisIsATest');
  CheckEquals(ConvertNamingConvention('_THIS_IS_A_TEST', ncUpperSnakeCase, ncPascalCase), '_ThisIsATest');
  CheckEquals(ConvertNamingConvention('_THIS_IS_A_TEST', ncUpperSnakeCase, ncKebabCase), '_this-is-a-test');

  CheckEquals(ConvertNamingConvention('THIS_IS_A_TEST_', ncUpperSnakeCase, ncUpperSnakeCase), 'THIS_IS_A_TEST_');
  CheckEquals(ConvertNamingConvention('THIS_IS_A_TEST_', ncUpperSnakeCase, ncSnakeCase), 'this_is_a_test_');
  CheckEquals(ConvertNamingConvention('THIS_IS_A_TEST_', ncUpperSnakeCase, ncCamelCase), 'thisIsATest_');
  CheckEquals(ConvertNamingConvention('THIS_IS_A_TEST_', ncUpperSnakeCase, ncPascalCase), 'ThisIsATest_');
  CheckEquals(ConvertNamingConvention('THIS_IS_A_TEST_', ncUpperSnakeCase, ncKebabCase), 'this-is-a-test_');

  CheckEquals(ConvertNamingConvention('_this-is-a-test', ncKebabCase, ncUpperSnakeCase), '_THIS_IS_A_TEST');
  CheckEquals(ConvertNamingConvention('_this-is-a-test', ncKebabCase, ncSnakeCase), '_this_is_a_test');
  CheckEquals(ConvertNamingConvention('_this-is-a-test', ncKebabCase, ncCamelCase), '_thisIsATest');
  CheckEquals(ConvertNamingConvention('_this-is-a-test', ncKebabCase, ncPascalCase), '_ThisIsATest');
  CheckEquals(ConvertNamingConvention('_this-is-a-test', ncKebabCase, ncKebabCase), '_this-is-a-test');

  CheckEquals(ConvertNamingConvention('this-is-a-test_', ncKebabCase, ncUpperSnakeCase), 'THIS_IS_A_TEST_');
  CheckEquals(ConvertNamingConvention('this-is-a-test_', ncKebabCase, ncSnakeCase), 'this_is_a_test_');
  CheckEquals(ConvertNamingConvention('this-is-a-test_', ncKebabCase, ncCamelCase), 'thisIsATest_');
  CheckEquals(ConvertNamingConvention('this-is-a-test_', ncKebabCase, ncPascalCase), 'ThisIsATest_');
  CheckEquals(ConvertNamingConvention('this-is-a-test_', ncKebabCase, ncKebabCase), 'this-is-a-test_');

  CheckEquals(ConvertNamingConvention('__ThisIsATest__', ncPascalCase, ncUpperSnakeCase), '__THIS_IS_A_TEST__');
  CheckEquals(ConvertNamingConvention('__ThisIsATest__', ncPascalCase, ncSnakeCase), '__this_is_a_test__');
  CheckEquals(ConvertNamingConvention('__ThisIsATest__', ncPascalCase, ncCamelCase), '__thisIsATest__');
  CheckEquals(ConvertNamingConvention('__ThisIsATest__', ncPascalCase, ncPascalCase), '__ThisIsATest__');
  CheckEquals(ConvertNamingConvention('__ThisIsATest__', ncPascalCase, ncKebabCase), '__this-is-a-test__');
end;


initialization
  Randomize;
  // Register any test cases with the test runner
  {$IFDEF FPC}
  RegisterTest(TTestmNamingConventions);
  {$ELSE}
  RegisterTest(TTestmNamingConventions.Suite);
  {$ENDIF}

end.

